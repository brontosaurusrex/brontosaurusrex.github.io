---
layout: page
title: client side search
published: true
---

<script src="https://cdn.jsdelivr.net/npm/fuse.js@7.1.0"></script>

<input style="width:66%; padding:45px; font-size:110%; border:5px solid black;" type="text" id="search" placeholder="Type to search..." autofocus>
<div id="results"></div>
<script>
    let searchIndex = [];
    async function loadData() {
        const response = await fetch('../search.json');
        searchIndex = await response.json();
        window.fuse = new Fuse(searchIndex, {
            keys: ['date', 'title', 'content', 'tags'],
            includeScore: true,
            //findAllMatches: true,
            threshold: 0.7
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
                div.innerHTML = `
  <a href="${item.id}">${item.title}</a>
  ${item.date ? ` <small>(${item.date})</small>` : ''}
  <p>${item.content.substring(0, 100)}...</p>
`;
                resultsContainer.appendChild(div);
            });
        }
    });
    loadData();
</script>

