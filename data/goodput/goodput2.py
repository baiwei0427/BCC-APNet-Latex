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
from matplotlib.font_manager import FontProperties
import matplotlib.pyplot as plt


Goodput = [89.3, 89.12, 89.17, 81.7, 8.01, 7.98, 8.0, 43.22, 67.14, 67.02, 66.87, 70.565, 78.23, 78.69, 78.55, 79.09, 86.0, 85.88, 85.86, 87.84, 88.69, 88.61, 88.49, 89.34, 89.25, 89.2, 89.19]
x = np.linspace(1, len(Goodput), len(Goodput))

fig, ax = plt.subplots(figsize=(7, 4.6), dpi=80)
plt.plot(x, Goodput, 'r-', linewidth=2)
plt.ylim(0,100)
plt.xlim(0,len(Goodput)+1)

fs=11
ax.annotate('Thresh.=\n500KB', (4, 81.7), xytext=(9, 95),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n2820KB', (8, 43.22), xytext=(12, 33),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n2830KB', (12, 70.565), xytext=(14, 60),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n2840KB', (16, 79.09), xytext=(18, 69),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Thresh.=\n2850KB', (20, 87.84), xytext=(22, 77),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')
ax.annotate('Disable', (24, 89.34), xytext=(26, 79),
            arrowprops=dict(arrowstyle="->", facecolor='k'),
            fontsize=fs,
            horizontalalignment='right', verticalalignment='top')

plt.xlabel("Time (s)", fontsize=14)
plt.ylabel("Goodput (Gbps)", fontsize=14)

plt.subplots_adjust(bottom=0.12, right=0.92, top=0.92)
ax.grid(True)
plt.savefig('goodput2.eps')
plt.show()



