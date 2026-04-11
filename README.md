# EML Edit Table — A Praat Plugin

**Version 2.0** 11 April 2026
**Author:** Ian Howell, Embodied Music Lab · [embodiedmusiclab.com](https://www.embodiedmusiclab.com)

## What it does

Praat’s built-in Table editor is read-only. This plugin adds a full interactive editor for Table objects, accessible from both the Objects window and the TableEditor menu. It provides:

- **Cell editing** with click-to-navigate column/row selection and auto-advance
- **Find** (from top) and **Find Next** (from cursor) with column/row location reporting
- **Replace Next** and **Replace All** with contains/exact matching and column scoping
- **Structural operations**: add, insert, and delete rows and columns; rename columns
- State persistence across dialog cycles (column, row, find text, scope, match type all repopulate)

## Installation

Copy the `plugin_EML_Edit_Table` folder into your Praat preferences directory:

|OS     |Location                            |
|-------|------------------------------------|
|macOS  |`~/Library/Preferences/Praat Prefs/`|
|Windows|`C:\Users\<you>\Praat\`             |
|Linux  |`~/.praat-dir/`                     |

Restart Praat. The plugin registers automatically.

### Folder structure

```
plugin_EML_Edit_Table/
├── setup.praat
├── eml-edit-table.praat
├── eml-edit-table-launch.praat
├── eml-edit-table-editor.praat
└── README.md
```

## How to use

### From the Objects window

1. Select a Table object
1. Click **EML: Edit Table…** in the dynamic action buttons

This opens the TableEditor window for visual reference, then launches the editor. When you quit, the TableEditor closes automatically.

### From the TableEditor menu

1. Open a Table with **View & Edit**
1. Go to **Edit → EML: Edit Table…**

The editor runs alongside the already-open TableEditor. When you quit, the TableEditor stays open.

### Editing cells

The main dialog shows the current column, row, and cell value. Use the dropdowns to navigate. **Read** loads the value at the selected position. **Set** writes the value and advances to the next row. **Find…** opens the find/replace dialog. **Edit** opens the structural operations dialog.

### Find and Replace

Five actions are available:

|Button     |Behavior                                         |
|-----------|-------------------------------------------------|
|**Find**   |Searches from the top of the table               |
|**Fnd Nxt**|Searches forward from the current cursor position|
|**Rep Nxt**|Finds the next match and replaces it             |
|**Rep All**|Replaces all matches in the selected scope       |
|**Go Back**|Returns to the main editor                       |

All actions stay in the Find/Replace dialog until you click Go Back. Match results report the column name and row number.

**Scope** can be set to all columns or a specific column. **Match type** supports substring (“Contains”) or full-cell (“Exact”) matching.

### Structural operations

Available through the **Edit** button:

- Add row at end
- Insert row after a specified position
- Delete a row
- Add column at end
- Insert column at a specified position
- Delete a column
- Rename a column

## Compatibility with EML Praat Tools

If the full EML Praat Tools plugin (`plugin_EMLTools`) is installed, this standalone plugin disables itself automatically — the table editor is included in that suite. No conflicts, no duplicate menu entries.

## Requirements

- Praat 6.1 or later (tested on 6.4.x)
- macOS, Windows, or Linux

## Attribution

Framework: EML PraatGen by Ian Howell, Embodied Music Lab
Code generation: Claude (Anthropic)

## License

GPL-3.0 or later