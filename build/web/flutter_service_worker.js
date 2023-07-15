'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"assets/AssetManifest.bin": "797c4ee862e678b7b4a603fcb1a31aa3",
"assets/AssetManifest.json": "1bee7b69287095d0d086399bd84a2b8f",
"assets/assets/biryani.png": "6343c08aecdeef62f082db2d103deb4d",
"assets/assets/bread.png": "f7ff6097d1d45f7c9a508d1c278688d2",
"assets/assets/call.png": "d8774664add56d085cb5bb585b70ed7c",
"assets/assets/choose.png": "b1f70e2d8e05af471f9b4d9ce8c81d37",
"assets/assets/curry.png": "ae145b3247080d1f4d4ded163c30d61f",
"assets/assets/custom.png": "5af4fe4ddf33ac638de0c02542d9a437",
"assets/assets/def.png": "d5c6ce273f8252cb5e6542e83d927fe3",
"assets/assets/default.png": "fafc16a4274c35c0e7926f8159580ae3",
"assets/assets/dinner%2520plate.png": "976cbd1b45b44fba97594fb776ce26cd",
"assets/assets/drink.png": "bfdb887ce5653f41f56f4656191b9135",
"assets/assets/Dyn_Pricing.png": "46961cab899f6db523a85b966ae1e130",
"assets/assets/Enjoy_food.png": "1f9fd42518079aae0c4596ffb3a26bb2",
"assets/assets/food.png": "5c82e928e8ca62aed35ebba27ef6ac70",
"assets/assets/grilled.png": "03bd73ece894184c8412b77492c3d6eb",
"assets/assets/Group%25201994%2520(2).png": "064cbb58dda1fb51c1aea97d8b8391f5",
"assets/assets/header.png": "8faf7ca23a6e1fa4bd2e65514a7bca2e",
"assets/assets/Healthy.png": "c6d0d5883403a4dcd53076b6527128de",
"assets/assets/ice.png": "7170e587059ede6dfb90004b90fd7163",
"assets/assets/log.png": "df11fbe66a2c3b0adbbd24601a281055",
"assets/assets/Logo.png": "021535d0e64b55f63528a1424634d492",
"assets/assets/menu.png": "d639c244fa4a7a85da427f51da765fca",
"assets/assets/mush.png": "d4c089edd284f6809d0d863e7a95d3c4",
"assets/assets/plain.png": "3da937905ab36136652a2e7295ff2c2b",
"assets/assets/rice.png": "f50e6b85c335cfa9c66c52e10d5a8a34",
"assets/assets/Signature.png": "c17610524886be1fce1276d055608787",
"assets/assets/Splash%2520screen%25202.jpg": "9afaf83c37957024dd16c6e4bf00da95",
"assets/assets/Splash_screen_4.jpg": "46c50c9e29ad49da89a8573c337b1527",
"assets/assets/Splash_screen_4.png": "2c85aa2e217b35e8779006562ddc6862",
"assets/assets/Starter.png": "891acf0dbce5f77b40422b1b3e96beb4",
"assets/assets/taste.png": "afab4e3661030a2b6058510501934b2e",
"assets/assets/track.png": "358bfdc607ef1547e4a8739fd4a828af",
"assets/assets/veggies.png": "bacd92d258edcb89abb078863df011db",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "afb4638971f7f361ed573de053c6cb79",
"assets/NOTICES": "4c8b9070fcb9e3ad29603be00053ffa2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/quickalert/assets/confirm.gif": "bdc3e511c73e97fbc5cfb0c2b5f78e00",
"assets/packages/quickalert/assets/error.gif": "c307db003cf53e131f1c704bb16fb9bf",
"assets/packages/quickalert/assets/info.gif": "90d7fface6e2d52554f8614a1f5deb6b",
"assets/packages/quickalert/assets/loading.gif": "ac70f280e4a1b90065fe981eafe8ae13",
"assets/packages/quickalert/assets/success.gif": "dcede9f3064fe66b69f7bbe7b6e3849f",
"assets/packages/quickalert/assets/warning.gif": "f45dfa3b5857b812e0c8227211635cc4",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"create-react-app/package.json": "0afc61f496e5de609529a9463132c644",
"create-react-app/pnpm-lock.yaml": "4238567e99634843ddf870eae1ed11dd",
"create-react-app/public/favicon.ico": "c92b85a5b907c70211f4ec25e29a8c4a",
"create-react-app/public/index.html": "ef8a02db437c74f2ecb0d88becc4b9d4",
"/": "b83a17b93c642895f9181e7910e106f9",
"create-react-app/public/logo192.png": "33dbdd0177549353eeeb785d02c294af",
"create-react-app/public/logo512.png": "917515db74ea8d1aee6a246cfbcc0b45",
"create-react-app/public/manifest.json": "d9d975cebe2ec20b6c652e1e4c12ccf0",
"create-react-app/public/robots.txt": "fa1ded1ed7c11438a9b0385b1e112850",
"create-react-app/README.md": "658bd5d2499019d2667523fe3ef06ad6",
"create-react-app/src/App.css": "2651f2265d6613947b1cc23282b21735",
"create-react-app/src/App.js": "729c6e80666d816e274383ec4ca462df",
"create-react-app/src/App.test.js": "d18ac434afb00158b91831ac1e36c491",
"create-react-app/src/index.css": "6c2104b8d219ed99234ae2d6329f4357",
"create-react-app/src/index.js": "0a46a627f12fd95ddfd062a2d54752c5",
"create-react-app/src/logo.svg": "06e733283fa43d1dd57738cfc409adbd",
"create-react-app/src/reportWebVitals.js": "240e2381f826a9bb84d178b29b7b9abe",
"create-react-app/src/setupTests.js": "1a77571e1a8cf36018a41bcedf60db75",
"create-react-app/src/vitals.js": "ff2cc194fa46f22e131a1b426f221bd0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b83a17b93c642895f9181e7910e106f9",
"main.dart.js": "1f43debd3529178cd1e82a3c0a87f053",
"manifest.json": "6e9d15681b95afa691ca36d7791a9e22",
"version.json": "67ec5478ab9cfdf9c5ff8dc3c8e6110c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
