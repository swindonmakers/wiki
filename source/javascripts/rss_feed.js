function rss_feedNS_fetch_script(url) {
  (function(){
    var rss_feedLinkroll = document.createElement('script');
    rss_feedLinkroll.type = 'text/javascript';
    rss_feedLinkroll.async = true;
    rss_feedLinkroll.src = url;
    document.getElementsByTagName('head')[0].appendChild(rss_feedLinkroll);
  })();
}

function rss_feedNS_show_bmarks(r) {
  var lr = new rss_feed_Linkroll();
  lr.set_items(r.rss.channel.item);
  lr.show_bmarks();
}

function rss_feed_Linkroll() {
  var items;

  this.set_items = function(i) {
    this.items = i;
  }
  this.show_bmarks = function() {
    var lines = [];
    var count = (this.items.length > rss_item_count) ? rss_item_count : this.items.length;
    for (var i = 0; i < count; i++) {
      var item = this.items[i];
      var str = this.format_item(item);
      lines.push(str);
    }
    document.getElementById(linkroll).innerHTML = lines.join("\n");
  }
  this.cook = function(v) {
    return v.replace('<', '&lt;').replace('>', '&gt>');
  }

  this.format_item = function(it) {
    if (it.title.length > rss_title_length) {
      it.title = it.title.substr(0, rss_title_length - 3);
      it.title = it.title.substr(0, Math.min(it.title.length, it.title.lastIndexOf(" "))) + ' ..'
    }
    var str = "<li class=\"rss_feed-item\">";
    str += "<a class=\"rss_feed-title\" href=\"" + this.cook(it.link) + "\">" + this.cook(it.title) + "</a>";
    if (it.description) {
      str += "<span class=\"rss_feed-description\">" + this.cook(it.description) + "</span>\n";
    }
    str += "</li>\n";
    return str;
  }
}
rss_feed_Linkroll.prototype = new rss_feed_Linkroll();
rss_feedNS_fetch_script(rss_feed_url + "&callback=rss_feedNS_show_bmarks");
