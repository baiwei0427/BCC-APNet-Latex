"""
Plot demonstrating the integral as the area under a curve.

Although this is a simple example, it demonstrates some important tweaks:

    * A simple line plot with custom color and line width.
    * A shaded region created using a Polygon patch.
    * A text label with mathtext rendering.
    * figtext calls to label the x- and y-axes.
    * Use of axis spines to hide the top and right spines.
    * Custom tick placement and labels.
"""
import numpy as np
import matplotlib
matplotlib.use('Agg')

from matplotlib.font_manager import FontProperties
import matplotlib.pyplot as plt

Goodput = [89.29, 89.36, 89.23, 33.44, 8.01, 8.04, 8.01, 41.24, 57.37, 56.88, 57.2, 62.18, 70.64, 70.47, 70.37, 75.87, 77.11, 76.7, 76.71, 77.89, 84.12, 83.95, 83.8, 84.75, 87.16, 87.16, 87.08, 89.3, 89.43, 89.3, 89.4]
x = np.linspace(1, len(Goodput), len(Goodput))

fig, ax = plt.subplots(figsize=(7, 4.6), dpi=80)
plt.plot(x, Goodput, 'r-', linewidth=3)
plt.ylim(0,100)
plt.xlim(0,len(Goodput)+1)
plt.xticks([0, 5, 10, 15, 20, 25, 30], fontsize = 16) # work on current fig
plt.yticks([0, 20, 40, 60, 80, 100], fontsize = 16) # work on current fig

fs=11
ax.annotate('Thresh.=\n500KB', (4, 33.44), xytext=(3.8, 20),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n1600KB', (8, 41.24), xytext=(12, 26),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n1630KB', (12, 62.18), xytext=(15, 47),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n1650KB', (16, 75.87), xytext=(19, 60),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n1680KB', (20, 77.89), xytext=(23, 64),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n1700KB', (24, 84.75), xytext=(27, 69),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n1750KB', (28, 89.3), xytext=(31, 70),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')

plt.xlabel("Time (s)", fontsize=18)
plt.ylabel("Goodput (Gbps)", fontsize=18)

plt.subplots_adjust(bottom=0.12, right=0.92, top=0.92)
ax.grid(True)
plt.savefig('goodput1.eps')
plt.show()



