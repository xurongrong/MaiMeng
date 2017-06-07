// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap/carousel
//= require bootstrap-sprockets
//= require wow.min
//= require autosize.min
//= require jquery.countdown.min
//= require bootstrap/collapse
//= require bootstrap-wysihtml5
//= require bootstrap-wysihtml5/locales/zh-CN

//= require_tree .


<%=  content_for :handwrite_javascript do %>
<script>
$(document).ready(function(){
  new WOW().init();
})

// When the user scrolls down 1800px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 1800 || document.documentElement.scrollTop > 1800) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
<% end %>

// 图片自适应大小支持代码块
// 在product/show.html.erb的页面中，对img图片用这一格式进行校正
// 让图片在大于div宽度时自动缩小不而溢出，确保版面的公正和美观
function ReImgSize(){
  for (j=0;j<document.images.length;j++)
  {
    document.images[j].width=(document.images[j].width>420)?"420":document.images[j].width;
  }
}
