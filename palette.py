import math
import pdb

import colorsys
import matplotlib.pyplot as plt

import matplotlib.colors as mcolors
from matplotlib.patches import Rectangle


colors = {
    "a": "#062329",
    "b": "#0b3335",
    "c": "#126367",
    "d": "#2ec09c",
    "e": "#44b340",
    "f": "#7ad0c6",
    "g": "#8cde94",
    "h": "#c1d1e3",
    "i": "#d1b897",
    "j": "#ff0000",
    "k": "#ffaa00",
    "l": "#ffffff",
}


def hex_to_hsv(hex_value):
    # Convert hex to RGB
    rgb = tuple(int(hex_value[i:i+2], 16) / 255 for i in (0, 2, 4))
    # Convert RGB to HSV
    hsv = colorsys.rgb_to_hsv(*rgb)
    return hsv

def sort_colors_by_hsv(color_dict):
    # Convert hex values to HSV and store them in a list of tuples
    colors_with_hsv = [(color_name, hex_to_hsv(hex_value[1:])) for color_name, hex_value in color_dict.items()]

    # Sort the colors based on the HSV values
    sorted_colors = sorted(colors_with_hsv, key=lambda x: x[1])

    # Return the sorted color names
    return [color[0] for color in sorted_colors]

def plot_colortable(colors, *, ncols=4, sort_colors=True):

    cell_width = 212
    cell_height = 22
    swatch_width = 48
    margin = 12

    if sort_colors:
        names = sort_colors_by_hsv(colors)
    else:
        names = colors.keys()

    n = len(names)
    nrows = math.ceil(n / ncols)

    width = cell_width * ncols + 2 * margin
    height = cell_height * nrows + 2 * margin
    dpi = 72

    fig, ax = plt.subplots(figsize=(width / dpi, height / dpi), dpi=dpi)
    fig.subplots_adjust(margin/width, margin/height,
                        (width-margin)/width, (height-margin)/height)
    ax.set_xlim(0, cell_width * ncols)
    ax.set_ylim(cell_height * (nrows-0.5), -cell_height/2.)
    ax.yaxis.set_visible(False)
    ax.xaxis.set_visible(False)
    ax.set_axis_off()

    for i, name in enumerate(names):
        row = i % nrows
        col = i // nrows
        y = row * cell_height

        swatch_start_x = cell_width * col
        text_pos_x = cell_width * col + swatch_width + 7

        value = colors[name]
        ax.text(text_pos_x, y, f"{name}\n{value}", fontsize=24,
                horizontalalignment='left',
                verticalalignment='center')

        ax.add_patch(
            Rectangle(xy=(swatch_start_x, y-9), width=swatch_width,
                      height=18, facecolor=colors[name], edgecolor='0.7')
        )
    return fig

# fig = plot_colortable(colors, ncols=2)
# fig.show()

colors = {
    "monokai_yellow": "#e6db74",
    "monokai_orange": "#fd971f",
    "monokai_red": "#f92672",
    "monokai_magenta": "#fd5ff0",
    "monokai_blue": "#66d9ef",
    "monokai_green": "#a6e22e",
    "monokai_cyan": "#a1efe4",
    "monokai_violet": "#ae81ff",
    "naysayer_blue": "#0000ff",
    "white": "#ffffff",
    "red": "#ff0000",
    "brown": "#d1b897",
    "yellow": "#ffaa00",
    "green": "#44b340",
    "light_green": "#8cde94",
    "tiffany": "#2ec09c",
    "mint": "#7ad0c6",
    "dark_green": "#126367",
    "darker_green": "#0b3335",
    "darkest_green": "#062329",
    "grey": "#c1d1e3",
}

fig = plot_colortable(colors, ncols=3, sort_colors=False)
fig.show()
