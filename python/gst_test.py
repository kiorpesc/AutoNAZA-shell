import pygst
pygst.require("0.10")
import gst

source = gst.element_factory_make("uvch264_src", "uvcsource")

