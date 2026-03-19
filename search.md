---
layout: search
title: Client side search
published: true
---

<style>
  input#search {
    display: block;
    margin: 0 auto;
  }
  input::placeholder { opacity: 0.3; }
</style>

<script src="/public/js/fuse.js"></script>

<input style="width:100%; padding:15px; margin-bottom:25px; margin-top:25px; font-size:110%; opacity:0.8;" 
  type="text" 
  id="search" 
  placeholder="Search" 
  autofocus >

<div id="results"></div>

<div style="position: relative; top: -20px;"><small><a href="https://www.fusejs.io/">Powered by <img src="/media/fusejs_logo.png" style="max-width: 30px; height: auto; position: relative; top: 10px;"> Fuse.js</a></small></div>

<script>
let searchIndex = [];
let fuse;

// Load search index and initialize Fuse
async function loadData() {
    const response = await fetch('../search.json');
    searchIndex = await response.json();

    fuse = new Fuse(searchIndex, {
        keys: [
            { name: 'title', weight: 0.5 },
            { name: 'content', weight: 0.4 },
            { name: 'tags', weight: 0.1 }
        ],
        includeScore: true,
        findAllMatches: false,
        distance: 2000000,
        includeMatches: true,
        threshold: 0.3,
        shouldSort: true,
        useExtendedSearch: true,
    });
}

// Format date
function formatDate(dateString) {
    const date = new Date(dateString);
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${day}. ${month}. ${year}`;
}

// Generate highlighted link
function generateHighlightedLink(item, query) {
    const url = new URL(item.id, window.location.origin);
    url.hash = `#:~:text=${encodeURIComponent(query)}`;
    return url.toString();
}

// Perform search, boost newer stuff slightly, updated 19.03.2026
function performSearch(query) {
    const resultsContainer = document.getElementById('results');
    resultsContainer.innerHTML = '';

    if (!query || query.length <= 2) return;

    const now = Date.now() / 1000; // current time in seconds

    const results = fuse.search(query).map(result => {
        const item = result.item;

        // --- TEXT RELEVANCE ---
        // Fuse score: 0 = perfect match → invert it
        const relevance = 1 - result.score;

        // --- RECENCY ---
        const ageDays = item.timestamp
            ? (now - item.timestamp) / 86400
            : 9999; // fallback for missing timestamps

        // Smooth decay (new posts get boost, old ones fade)
        const recency = Math.exp(-ageDays / 30); 
        // ~1.0 = today
        // ~0.37 = 1 month
        // ~0.05 = 3 months

        // --- SMART COMBINATION ---
        // Only boost when relevance is already decent
        const boost = recency * 0.15 * relevance;

        const finalScore = relevance + boost;

        return {
            item,
            finalScore
        };
    });

    // Sort by final score
    results.sort((a, b) => b.finalScore - a.finalScore);

    // Render
    results.forEach(({ item }) => {
        const div = document.createElement('div');
        div.className = 'result';
        div.innerHTML = `
            <a href="${generateHighlightedLink(item, query)}">${item.title}</a>
            ${item.date ? ` <small>(${formatDate(item.date)})</small>` : ''}
            <p>${item.content.substring(0, 100)}...</p>
        `;
        resultsContainer.appendChild(div);
    });
}

// Update URL without reloading
function updateURL(query) {
    const url = new URL(window.location);
    if (query) {
        url.searchParams.set("q", query);
    } else {
        url.searchParams.delete("q");
    }
    window.history.replaceState({}, "", url);
}

// Init everything
document.addEventListener("DOMContentLoaded", async () => {
    await loadData();

    const input = document.getElementById('search');

    // If URL has ?q= parameter, auto search
    const params = new URLSearchParams(window.location.search);
    const initialQuery = params.get("q");

    if (initialQuery) {
        input.value = initialQuery;
        performSearch(initialQuery);
    }

    // Live search while typing
    input.addEventListener('input', function() {
        const query = this.value;
        updateURL(query);
        performSearch(query);
    });
});
</script>