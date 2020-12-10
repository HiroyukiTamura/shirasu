var storageKey = Object.keys(window.localStorage)
    .filter((value) => value.startsWith('@@auth0spajs@@') && value.includes('offline_access'))
    .sort((a, b) => b.expiresAt - a.expiresAt)[0];
window.localStorage.getItem(storageKey ?? '') ?? '';