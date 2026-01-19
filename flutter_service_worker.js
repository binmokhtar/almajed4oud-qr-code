'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "fb6e632b4f3488079d93668301d9dacb",
"version.json": "9e458dd165772d40c8b11c24cf4412d7",
"index.html": "8d946053fcfe9bcdb0fd70a5a85d9dc6",
"/": "8d946053fcfe9bcdb0fd70a5a85d9dc6",
"CNAME": "abdfa2774c7c62fff6a6f7bdde2e5933",
"main.dart.js": "90c67cd218c369e50cc9fd6f0cc9f08f",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"favicon.png": "e84239b002f4b8397f447ccae91aabc9",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ebcf22f9aaa1455fb127b31246313e1c",
".git/config": "8d48d41b36ad6c84a460817fdcb0c70f",
".git/objects/95/5d7b4d44b002e807202283b46bf154254cc7da": "248c64b3289a1c678b35732cf8a8cba6",
".git/objects/92/83c086b4aea866db4c3e0284814f3b32d0cce4": "a368713ca64e87ed2864ec21f89a738b",
".git/objects/68/43fddc6aef172d5576ecce56160b1c73bc0f85": "50f3380c9772e107150d87533c44f28d",
".git/objects/6f/7661bc79baa113f478e9a717e0c4959a3f3d27": "27692dea2feef734dbb4475191d0b203",
".git/objects/35/4eaa5223267ab2d0793f09e1d6360eaa618d65": "1cac0c460e25952fd8543caef3564b8c",
".git/objects/69/b2023ef3b84225f16fdd15ba36b2b5fc3cee43": "80c87d02687031734a2db0a24528870c",
".git/objects/51/03e757c71f2abfd2269054a790f775ec61ffa4": "70d096a1769c7715b67dc1b780a35781",
".git/objects/51/23402f34495f39dde76042b7a32e67de23a675": "136b740191aa870095a898639d2dd65c",
".git/objects/93/b363f37b4951e6c5b9e1932ed169c9928b1e90": "c5c14c6ba3bb02da4e5392d205ee6267",
".git/objects/33/12791ff1d0c1a5e41b8e3fa98e21b989fcf14a": "8bcaf7192b2e9a2ffa3269fc0feb1d1e",
".git/objects/9d/5c6f8ccf92b0522d7d03e46b4c4140910e31dc": "118800b7baba0ebb669393d450e78f56",
".git/objects/02/efd2fc19329ec26fa0349d037da9f4b1a5c365": "9b7a8453b15f810924ff2d3aefd36605",
".git/objects/d9/5b1d3499b3b3d3989fa2a461151ba2abd92a07": "ae4ee21bd71069c6e962deed7485df4f",
".git/objects/ad/ced61befd6b9d30829511317b07b72e66918a1": "572f37892d3ef53b60b273b30f6436e4",
".git/objects/d6/5a4b7a790b17b00cb9b1b4dfc4ae3864aa5399": "1a23d7abb65909b8b0605ab6d1621134",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "5a9f3522bf38ba5dd54f15a0f75cb0d7",
".git/objects/f3/3e0726c3581f96c51f862cf61120af36599a32": "cb1ad23398d21b0518b0805134ac5acc",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "01d8a507be49f15714be4d17b6947e52",
".git/objects/eb/bf2a75e90b1d0b0ab1dac3f2f487f5d703cb45": "31b9c1216963936d90e33676b243ec02",
".git/objects/c7/708442d9d31de718e235b8a03bd1bca3cb78a7": "091cd7956665664feeb91700c24d773e",
".git/objects/c0/961d2291953d2b9ea89e786643dd379afbfd0b": "2551506cb6772759ef4ea218f7ef3734",
".git/objects/ee/0fe1e25776f1ecdbe874dbf779efbe839b88f6": "dc5e6e61fd43d42189d32e9c8bc530f8",
".git/objects/fd/05cfbc927a4fedcbe4d6d4b62e2c1ed8918f26": "d534e39531c224a748c356a964b910b0",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "fb2ee964a7fc17b8cba79171cb799fa3",
".git/objects/ca/18a84745681144e7c51d0621881862c702bbb0": "79b23cd2ed44c3d2cc88309d93c9a189",
".git/objects/e4/130fec4952e39b387a3b868e41b2643c0b39c0": "243ee4162ae0e41f425f294778cd9759",
".git/objects/c8/3af99da428c63c1f82efdcd11c8d5297bddb04": "4938f34d9cc8dae979506ac87d0a571f",
".git/objects/ec/7a0e036a5553fe3d548397dd64c0e98c0535b3": "5f89eadce675dbdad52b1e0b9736ef1d",
".git/objects/ec/24749db906da77229dcecd61d37b6489d02140": "66e24b4e3bf96ccf8f51736813a4a876",
".git/objects/18/bac3879a3864f7def817fd08254a72b87145f3": "18feca42aee42ee9b9b904e717f818ff",
".git/objects/7c/3463b788d022128d17b29072564326f1fd8819": "85fb081f640fd858e1baa68db8f3e55d",
".git/objects/16/3e048f5c0f4e5b302a6d68cfe5ce74e0113404": "658385266d80e933df3aaf4bd78c8d40",
".git/objects/42/faddccd87ca00d94f72d423213489ab2f6d768": "466c64b9cd5baac96a3f2acde342efa0",
".git/objects/28/072dc3b6bad9fcc70799ff0ef3977e823c76b3": "9d1646c15acdeb1b30f58ead26697e9c",
".git/objects/19/7867ca01182c458ded173965a40af94297af19": "68da7c4f039a70368e1f40d57609946f",
".git/objects/75/f49ac5a8d131ff733185c6db8f288c77bc1abe": "00ffcd801e138d1678e5370cac544e6d",
".git/objects/86/4e0eb82773b97440649bda22c3a91268e671b9": "26f9776a6e299e7eedb960519cc07455",
".git/objects/72/a34c2b2bc5b26e5c970b10fd68f043d0bdf58a": "f2903d8096bbb6b73a3c90cb28e96e74",
".git/objects/2a/b28f77f86e2e94f7f36f5ce91875a6655aff0a": "2dc9d9bb21f8be9a9b6273a73b8fc897",
".git/objects/88/5b789ac2238f064952ca9f4e278f9677dd9029": "9928ce6ee320562f4e11df4d4aa4c495",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e35fdc55764d9ed14315f6ff50093ab3",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "9524d053d0586a5f9416552b0602a196",
".git/objects/62/74c2dc08358dc89a3fe86a63437c20295a1825": "a270d68d1efb2818c440faa4fbebcead",
".git/objects/62/04e26c8dccea7b0a776fabc28519628f77ab2c": "dbaede944bf79f25444fb2432ba6455f",
".git/objects/96/d7e656a7b73761a048e72ed7b5c2edb236134b": "fe10d2c56b645e2159a11b42602aa3ef",
".git/objects/3a/8cda5335b4b2a108123194b84df133bac91b23": "b92a0f6b7400ff035ef092a8709952e1",
".git/objects/3a/f5c38c68f46e6814d52a8cb9157dc876df4721": "30cbaa12a2f4e6d16b57cc61c3f30019",
".git/objects/54/92b60063ad48a1bf7a573a144b0cd6998e5e09": "977973465a545b34e089265ae61bee7e",
".git/objects/30/44b93cbfeaec4fb6452156fac10f418e1a1c22": "e0185786df18e33f696d2bbe43fd7b58",
".git/objects/30/c74bae49de79c7effb98e7d21527f4360e8b36": "42b0f665567ec65f304727c7498a8c1c",
".git/objects/37/cabd4102e169bfe9a8fd9ddac94321e9aac690": "6b8ad4b8ecd9afbcb88c276a2c0372bf",
".git/objects/08/27c17254fd3959af211aaf91a82d3b9a804c2f": "a2c957fcd2f5f0e686f9a496d6e3a59d",
".git/objects/6d/19b0c40d2e2af63c38ebec6a64f790fafc42f4": "a0eaf8da0f1b57a8fb3ed21fc1c3b21a",
".git/objects/39/ca7fe630ca64915a659cdc0473b176b8763206": "b944ddf82c57fb6113d7f0233ab614f2",
".git/objects/0f/82a8360517d2c8b7d16e85434d40c6fb735954": "8f4a6f8690bc9896b5a89109c2f0a3ab",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "9dbf5b01e391c548c8343be8d1d4b04e",
".git/objects/d4/68e94d184cc929a84af847f8da27c799f2fd93": "7424360c8521bfc453faee552e6e4bb2",
".git/objects/a7/a59e9c1234a0c74a4b017d78870ce44efa804a": "63a6b19cf0ea024e664aa83a0e80163f",
".git/objects/a7/49fa715430cb20771486fa7bb5014a68fca3f9": "7de0a8ca9d24edb9cea233294ad4161c",
".git/objects/a7/3df04b067b95735f0dcc8f7f9459e10ca0c28a": "daa6cdb6ec05e8a8d713a44c1c96dbb4",
".git/objects/b6/738be134210368d08252b70319e819e4bead0f": "6e1d3255a00fd701c129c8eb8cbbfe14",
".git/objects/a9/e067faf9282d5be24060cfbf251f51ba7d9b89": "1c66a46d05747d501a0fa28281f4686a",
".git/objects/a9/fb1747a13c8b27e3de3deda2a99310f61220a4": "92c0967b7f9da2ed02ea08f8ff0251bb",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "b0c549c0aed479932cf26d094f76630e",
".git/objects/b7/e3d1d1e31e1ad7b76f4b0ecf73a4ebb008317e": "f1698e3d599436a592d7b4910824f1e3",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "9de9f2c6fa0aea6ee34b79162e9fc361",
".git/objects/b9/365e2411ecd6cc2d7bf46af3af5c3371bfd35e": "0b7a749c1c92b3b62cc8957426160cfb",
".git/objects/b9/3e39bd49dfaf9e225bb598cd9644f833badd9a": "96233f83e8615fc3bc2c252e4aaa5698",
".git/objects/a1/ebb60f840df701bdbf419fbd5fe335ea7e9e0e": "b251bd67662d9a44c24a0db05a762699",
".git/objects/c3/e41bdb77a2e907c4480d69f5b673ef3a6cd0b2": "8151da732534f301c3e5496f632b390d",
".git/objects/e6/c6e3a3abc7ae63977dc7d8898e76fa145a69a6": "a2ad1ac19f43e7ef258822e57a45ba21",
".git/objects/e6/eb8f689cbc9febb5a913856382d297dae0d383": "e223dd636229c40679173e18c0a3e275",
".git/objects/f9/6e584f2b24f5900c05c0da567861d332d06ae3": "bcbe93b23fb38fbe838aa9fc55790f36",
".git/objects/c5/7ae54b83957708a007fd72bc540ec98ee88ae2": "cc80fb8b8f85ed0e72c44c223ba0f44e",
".git/objects/f6/e6c75d6f1151eeb165a90f04b4d99effa41e83": "badc782b67bf359bcce68100f8fe4312",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "c3694958e54483a81b3e32ab9f84ece2",
".git/objects/f1/af0046f44f886ad94f90fa456d493e6dd1dbad": "b0eeef08363d17b533ac24c11912454e",
".git/objects/2c/93a5c85bc76dae6dda67660a055670b9fcae53": "349b3465d7099af6bf7a277df859c5e6",
".git/objects/41/a37a896e245be1faad31dab7699b1061efb2ff": "06212e085e21cd8b0d2b82d0ccca1792",
".git/objects/70/4c4c97d6f6b73d6748e0306786069fac2f774f": "42bb3e4484e924b8e399cad18cc76cf4",
".git/objects/4f/40dabe4430b4d7288c6ae92d8fc3e17cf8e410": "b002c8fb453042fcc87d0af65d690641",
".git/objects/85/63aed2175379d2e75ec05ec0373a302730b6ad": "bb5ad116423ddf07049c2730cdb0c772",
".git/objects/82/eb0165a7be79d8d80b275d6c7664920e9e98d0": "edf1bff84010d12e03d5796d7a01d1e1",
".git/objects/2e/b1eb7cefca470697274673e3abe3ec14ae70c8": "1f34b3a8ac90bac87ed8a7581032572f",
".git/objects/8b/efe744be279fcf26025e48075e8f54ba220b50": "cffd991567008f432eeb93e2b52b19d6",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "b960c101c61d45373e9177b6d1d07335",
".git/logs/refs/heads/gh-pages": "a2641dfc93d1e508d6cf2f2cf42106c6",
".git/logs/refs/remotes/origin/gh-pages": "0cf11f642b82c6058bb13570e8695bbf",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "36438b728e0f80a7b1c0f00c52624ee8",
".git/refs/remotes/origin/gh-pages": "36438b728e0f80a7b1c0f00c52624ee8",
".git/index": "908c5aaac4f3d865e16927201ec00f16",
".git/COMMIT_EDITMSG": "4bb0f72c222b789950a703619b89960c",
"assets/NOTICES": "ca37f02d91ddcd283ab0c48fbfb3dae3",
"assets/FontManifest.json": "35cf76577d27e9d3281c8baea5751c55",
"assets/AssetManifest.bin.json": "84ab98ec01b47bf6d18c7e41aa4f2723",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "e37e63eb83de7000becb241b0882ff15",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "e9b52fecc7af780a80e52314612a2299",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin": "6851f777cd58cc5fdf469b0999ebe7c9",
"assets/fonts/MaterialIcons-Regular.otf": "fcab6aed6b95050577a9d2e9d35a238b",
"assets/assets/logo/almajed2.png": "e84239b002f4b8397f447ccae91aabc9",
"assets/assets/logo/google.png": "162bc5a51adb9f983cef17a0c330231c",
"assets/assets/fonts/fa-solid-900.ttf": "25914cfeafced317e1a0372187fbb2b9",
"assets/assets/fonts/Alexandria-Bold.ttf": "e50142fa2e16b4a2a3455d9032983f34",
"assets/assets/fonts/fa-brands-400.ttf": "15d54d142da2f2d6f2e90ed1d55121af",
"assets/assets/fonts/Alexandria-Regular.ttf": "0c5cf3ba4501158866108d8dc6b920e8",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
