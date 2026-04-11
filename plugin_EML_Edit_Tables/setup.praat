# ── Skip if EML Praat Tools plugin is installed (it includes this) ────────

if fileReadable (preferencesDirectory$ + "/plugin_EML_Praat_Tools/setup.praat")
    exitScript ()
endif

# ── Editor menu: appears in TableEditor Edit menu ─────────────────────────

Add menu command: "TableEditor", "Edit", "EML: Edit Table...", "", 0, "eml-edit-table-editor.praat"

# ── Dynamic action buttons: appear when 1 Table is selected ────────────────

Add action command: "Table", 1, "", 0, "", 0, "EML: Edit Table...", "", 0, "eml-edit-table-launch.praat"
