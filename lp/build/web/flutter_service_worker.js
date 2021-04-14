'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "6ad4c31e04ac74d475576fc3478f6d71",
"index.html": "e8d9f30225d636635297f258fdd719a9",
"/": "e8d9f30225d636635297f258fdd719a9",
"main.dart.js": "837e92e91edcaa47e377f4507b72fc3e",
"favicon.png": "13099e2fed63604cc8452623ef309f6a",
"icons/icon-192.png": "2be6f85afb7ea45414afe0c35adbde67",
"icons/icon-512.png": "babcd2c11e6ed66b6d539a560c98734f",
"manifest.json": "9454c8ec283c87d8231e3661aa0044ee",
"assets/AssetManifest.json": "7e61ddeedcad5ebfc21074e989c56ba6",
"assets/NOTICES": "6c3223e10c36e18ec23b70b99263c4fc",
"assets/FontManifest.json": "145825a8129166a7b878480a361e6658",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dffd9504fcb1894620fa41c700172994",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "4b6a9b7c20913279a3ad3dd9c96e155b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00bb2b684be61e89d1bc7d75dee30b58",
"assets/fonts/NotoSansJP-Medium.otf": "f7c9eac3d1ee38132ec7fafe34cb6378",
"assets/fonts/TT-UDShinGoPro-Bold.ttf": "ec43b1f099275171b0622f96a8752af8",
"assets/fonts/TT-UDShinGoPro-Medium.ttf": "25a576449aa4b3b4b56e20110182f557",
"assets/fonts/NotoSansJP-Bold.otf": "0ff89c4f64cd8f24f68a3034fbfefec1",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/svg/undraw_online_payments.svg": "3473e8227e195e98f42a007c84e7612d",
"assets/assets/svg/badge_app_store.svg": "2928664fe1fc6aca88583a6f606d60ba",
"assets/assets/svg/badge_amazon_store.svg": "21859be89e94d70cb739333628a06aa9",
"assets/assets/svg/logo_flutter.svg": "450062ba915d59dc27b60672165284a6",
"assets/assets/svg/logo_dart.svg": "ef26b12cc0b34cc83dfcde04e8bb1ea1",
"assets/assets/svg/logo_algolia.svg": "8cc535187c0a5e79317f56b53bac0e5b",
"assets/assets/svg/undraw_search.svg": "fabdbed6aff52d747d08b1afa6e07670",
"assets/assets/svg/undraw_security.svg": "741b73199ff4e165e11ce45ada6bb31d",
"assets/assets/svg/logo_figma.svg": "810a96e7ac9e0eee9e1a0649e6197962",
"assets/assets/svg/logo_performance.svg": "36fdebd391dc89aa3e2bca8e9192a4e9",
"assets/assets/svg/logo_kotlin.svg": "fe42529a71a6eaa74e7254926f1cfc5b",
"assets/assets/svg/undraw_audio.svg": "db66ddd6b105cf4b0e1294a48a8e3b2f",
"assets/assets/svg/logo_crashlytics.svg": "840aec5bfcfca6a811b8a9dd50090203",
"assets/assets/svg/logo_fastlane.svg": "1788069adb552c587042c3a0bb25fb9b",
"assets/assets/svg/logo_analytics.svg": "3c3c38a08a0008aae79f7e588b3e8214",
"assets/assets/svg/logo_postman.svg": "d69dccd9d076252f93be5e3b1862d9af",
"assets/assets/svg/logo_swift.svg": "59ca28489055e8e6dbe7cb1e10e57103",
"assets/assets/svg/logo_hosting.svg": "7137d27aa29c489463e8d1db651f95a6",
"assets/assets/svg/logo_graphql.svg": "a28a5d40d62ec8a5a428a01b084cac25",
"assets/assets/svg/logo_jira.svg": "cd6483dab87bb98887aeb4df30bbc94b",
"assets/assets/svg/logo_sentry.svg": "2c6c6a5d52dc1fe0be3b3e759a234b7f",
"assets/assets/svg/badge_google_play.svg": "2494713aa37dd6e2b5fa5ad8da0ae946",
"assets/assets/png/logo_git_guardian.png": "5468c38e51bef6e80c1998c4034fc709",
"assets/assets/png/badge_amazon_store.png": "a2ed23048e34d81e1b187cc071360351",
"assets/assets/png/sample.png": "ac11b9d357b81d930e142adc777f5f31",
"assets/assets/png/logo_github_actions.png": "b71c0a1893a84365b491affd86d6eed1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
