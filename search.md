---
layout: search
title: Client side search
published: true
---

<style>
  input#search {
    display: block;
    margin: 0 auto; /* Centers horizontally */
  }
</style>

<script src="/public/js/fuse.js"></script>

<input style="width:100%; padding:15px; margin-bottom:25px; margin-top:25px; font-size:110%; opacity:0.8;" type="text" id="search" placeholder="Type to search..." autofocus>

<div id="results">Supercharged by <a href="https://www.fusejs.io/">Fuse.js</a></div>
<script>
    let searchIndex = [];
    async function loadData() {
        const response = await fetch('../search.json');
        searchIndex = await response.json();
        window.fuse = new Fuse(searchIndex, {
          keys: [
            { name: 'date', weight: 0.6 },    // Higher weight for the date key
            { name: 'title', weight: 0.3 },   // Example weight
            { name: 'content', weight: 0.3 }, // Example weight
            { name: 'tags', weight: 0.1 }     // Example weight
          ],
          includeScore: true,
          findAllMatches: true,
          distance: 2000000,
          includeMatches: true,
          threshold: 0.3
        });
    }

    // Function to format the date
    function formatDate(dateString) {
        const date = new Date(dateString);
        const year = date.getFullYear();
        const month = String(date.getMonth() + 1).padStart(2, '0'); // Months are zero-based
        const day = String(date.getDate()).padStart(2, '0');
        return `${day}. ${month}. ${year}`;
    }

    // Function to generate highlighted link
    function generateHighlightedLink(item, query) {
        const url = new URL(item.id, window.location.origin); // Assuming item.id is the original link
        url.hash = `#:~:text=${encodeURIComponent(query)}`;
        return url.toString();
    }

    document.getElementById('search').addEventListener('input', function() {
        const query = this.value;
        const resultsContainer = document.getElementById('results');
        resultsContainer.innerHTML = '';
        if (query.length > 2) {
            const results = window.fuse.search(query);
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
    });
    loadData();
</script>
