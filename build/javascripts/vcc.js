$(document).ready(function() {
  // preload images.
  var urls = [
    '/images/vc3-logo-white.png',
    '/images/twitter-logo-top-white.png',
    '/images/github-logo-top-white.png',
    '/images/rss-logo-top-white.png'
  ];
  for (var u = 0; u < urls.length; u++) {
    var img = new Image();
    img.src = urls[u];
  }

  // carousel. 
  $('.default-slider').unslider({
    arrows: false,
    autoplay: true,
    delay: 8000,
    dots: true,
    speed: 1000
  });

  // google analytics. 
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-85360385-1', 'auto');
  ga('send', 'pageview');
});
