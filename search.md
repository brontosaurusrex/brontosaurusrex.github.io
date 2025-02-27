---
layout: page
title: client side search
published: true
tags: 
---


<script src="https://cdn.jsdelivr.net/npm/fuse.js@7.1.0"></script>

<input type="text" id="search" placeholder="Type to search...">
<div id="results"></div>
<script>
    let searchIndex = [];
    async function loadData() {
        const response = await fetch('../search.json');
        searchIndex = await response.json();
        window.fuse = new Fuse(searchIndex, {
            keys: ['title', 'content', 'tags'],
            includeScore: true,
            threshold: 0.5
        });
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
                div.innerHTML = `<a href="${item.id}">${item.title}</a><p>${item.content.substring(0, 100)}...</p>`;
                resultsContainer.appendChild(div);
            });
        }
    });
    loadData();
</script>

