
{% set comment_system = parse_config([site.data.cutie.global.comment_system, theme.global.comment_system]) %}
<h1>{{ __('post.comment') }}</h1>
{% if comment_system === 'valine' %}
  {% if site.data.cutie.valine.appId %}
    <div id='valine'></div>
  {% else %}
    <div id="comment-not-available">
      Not available
      <p><strong>For site maintainer: Please provide <code>appId</code> and <code>appKey</code> in your <code>_data/cutie.yml</code> file for <code>valine</code> comment system.</strong></p>
    </div>
  {% endif %}
{% elseif comment_system === 'disqus' %}
  {% if site.data.cutie.disqus.shortname %}
    <div id='disqus_thread'></div>
    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
  {% else %}
    <div id="comment-not-available">
      Not available
      <p><strong>For site maintainer: </strong>Please provide <code>shortname</code> in your <code>_data/cutie.yml</code> file for <code>disqus</code> comment system.</p>
    </div>
  {% endif %}
{% elseif comment_system === 'gitment' %}
  {% if site.data.cutie.gitment.client_secret %}
    <div id='gitment'></div>
  {% else %}
    <div id="comment-not-available">
      Not available
      <p><strong>For site maintainer: </strong>Please provide <code>owner</code>, <code>repo</code>, <code>client_id</code>, and <code>client_secret</code> in your <code>_data/cutie.yml</code> file for <code>gitment</code> comment system.</p>
    </div>
  {% endif %}
{% elseif comment_system === 'livere' %}
  {% set id = site.data.cutie.livere.id %}
  {% set uid = site.data.cutie.livere.uid %}
  {% if uid %}
    <div id="lv-container" data-id="{{ id }}" data-uid="{{ uid }}">
  {% else %}
    <div id="comment-not-available">
      Not available
      <p><strong>For site maintainer: </strong>Please provide <code>id</code>, <code>uid</code> in your <code>_data/cutie.yml</code> file for <code>livere</code> comment system.</p>
    </div>
  {% endif %}
{% endif %}
