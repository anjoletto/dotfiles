config.load_autoconfig(True)

# ---------------------------------------------------------------------------- #
# header, user agent, etc
# ---------------------------------------------------------------------------- #
config.set("backend", "webengine")

c.content.private_browsing = True
c.content.blocking.enabled = True
c.content.cookies.accept = "never"

c.content.geolocation = False
c.content.headers.do_not_track = False
c.content.images = True

c.content.media.audio_capture = False
c.content.media.video_capture = False
c.content.media.audio_video_capture = False
c.content.mute = False
c.content.webgl = False

c.content.persistent_storage = False
c.content.prefers_reduced_motion = True

c.content.javascript.enabled = True
c.content.javascript.can_open_tabs_automatically = False
c.content.pdfjs = True

config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

c.downloads.location.directory = "~"
c.downloads.location.prompt = True
# ---------------------------------------------------------------------------- #

# ---------------------------------------------------------------------------- #
# pages and search engines
# ---------------------------------------------------------------------------- #
c.url.default_page = "about:blank"
c.url.start_pages = "about:blank"
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "ddg": "https://duckduckgo.com/?q={}",
    "sx": "https://searx.org/?q={}",
    "eco": "https://www.ecosia.org/search?method=index&q={}",
    "yt": "https://www.youtube.com/results?search_query={}",
    "py": "https://docs.python.org/3/search.html?q={}"
}
# ---------------------------------------------------------------------------- #

# ---------------------------------------------------------------------------- #
# appearence
# ---------------------------------------------------------------------------- #
c.content.fullscreen.window = False

c.fonts.default_size = "14pt"
c.fonts.default_family = "Fira Code"

#c.spellcheck.languages = ["en-GB", "en-US", "pt-BR"]

c.hints.mode = "number"

c.statusbar.position = "bottom"
c.statusbar.show = "always"
c.statusbar.widgets = ["url", "progress", "keypress"]

c.tabs.position = "top"
c.tabs.background = True
c.tabs.close_mouse_button = "middle"
c.tabs.close_mouse_button_on_bar = "new-tab"
c.tabs.new_position.related = "last"
c.tabs.title.alignment = "center"

c.window.hide_decoration = True

c.colors.webpage.darkmode.enabled = True

#config.source('nord-qutebrowser.py')

# ---------------------------------------------------------------------------- #
