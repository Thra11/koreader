local Device = require("device")

local order = {
    ["KOMenu:menu_buttons"] = {
        "navi",
        "typeset",
        "setting",
        "tools",
        "search",
        "filemanager",
        "main",
    },
    navi = {
        "table_of_contents",
        "bookmarks",
        "toggle_bookmark",
        "bookmark_browsing_mode",
        "----------------------------",
        "go_to",
        "skim_to",
        "----------------------------",
        "go_to_previous_location",
    },
    typeset = {
        "set_render_style",
        "style_tweaks",
        "----------------------------",
        "change_font",
        "hyphenation",
        "floating_punctuation",
        "----------------------------",
        "switch_zoom_mode",
        "----------------------------",
        "page_overlap",
        "speed_reading_module_perception_expander",
        "----------------------------",
        "highlight_options",
    },
    setting = {
        "read_from_right_to_left",
        -- common settings
        -- those that don't exist will simply be skipped during menu gen
        "frontlight", -- if Device:hasFrontlight()
        "night_mode",
        "----------------------------",
        "network",
        "screen",
        "----------------------------",
        "taps_and_gestures",
        "navigation",
        "document",
        "----------------------------",
        "language",
        "device",
        "----------------------------",
        "djvu_render_mode",
        "status_bar",
    },
    device = {
        "time",
        "battery",
        "autosuspend",
        "sleepcover",
        "mass_storage_settings",
    },
    navigation = {
        "back_to_exit",
        "back_in_filemanager",
        "enable_back_history",
        "----------------------------",
        "invert_page_turn_buttons",
    },
    network = {
        "network_wifi",
        "network_proxy",
        "network_restore",
        "network_info",
        "network_before_wifi_action",
        "network_dismiss_scan",
        "----------------------------",
        "ssh",
    },
    screen = {
        "screensaver",
        "----------------------------",
        "screen_dpi",
        "screen_eink_opt",
        "color_rendering",
        "----------------------------",
        "screen_toggle_gsensor",
        "----------------------------",
        "keep_screen_on",
        "fullscreen",
    },
    taps_and_gestures = {
        "gesture_manager",
        "frontlight_gesture_controller",
        "----------------------------",
        "follow_links",
        "----------------------------",
        "menu_activate",
        "screen_disable_double_tab",
    },
    tools = {
        "read_timer",
        "calibre_wireless_connection",
        "evernote",
        "statistics",
        "progress_sync",
        "wallabag",
        "zsync",
        "news_downloader",
        "send2ebook",
        "text_editor",
        "profiles",
        "----------------------------",
        "more_plugins",
        "plugin_management",
    },
    more_plugins = {
        "auto_frontlight",
        "battery_statistics",
        "synchronize_time",
        "keep_alive",
        "terminal",
    },
    search = {
        "dictionary_lookup",
        "dictionary_lookup_history",
        "dictionary_settings",
        "----------------------------",
        "wikipedia_lookup",
        "wikipedia_history",
        "wikipedia_settings",
        "----------------------------",
        "translation_settings",
        "----------------------------",
        "goodreads",
        "----------------------------",
        "fulltext_search",
    },
    filemanager = {},
    main = {
        "history",
        "open_previous_document",
        "----------------------------",
        "book_status",
        "book_info",
        "----------------------------",
        "system_statistics",
        "mass_storage_actions",
        "----------------------------",
        "ota_update", -- if Device:hasOTAUpdates()
        "version",
        "help",
        "----------------------------",
        "exit_menu",
    },
    help = {
        "quickstart_guide",
        "----------------------------",
        "report_bug",
        "----------------------------",
        "about",
    },
    exit_menu = {
        "restart_koreader",
        "----------------------------",
        "sleep", -- if Device:isKindle() or Device:isKobo()
        "poweroff", -- if Device:isKobo()
        "reboot",   -- if Device:isKobo()
        "----------------------------",
        "exit",
    }
}

if Device:isAndroid() then
    order.exit_menu = nil
end

return order
