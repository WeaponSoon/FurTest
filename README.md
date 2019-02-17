# 毛发渲染
+ 经测试在我的360 1501-A02手机（MTK6753，2G RAM，720*1280）上，测试场景可以稳定跑满30fps。
+ 渲染毛发的密度跟噪点图有关，在不增加噪点图分辨率的情况下，原则上毛发密度不会影响渲染效率。
+ 毛发的长度由毛发蒙版图确定，毛发蒙版图中R通道的值表示毛发长度，为1时表示此处的毛发为最大长度，为0时表示此处没有毛发。
+ 如果要渲染更长的毛发，可以通过增加Pass或者增加每个pass的偏移来实现。增加Pass会增加渲染的时间，增加每个Pass的偏移会影响在长度方向上毛发渲染的精度。
# Fur Rendering
+ After testing on my 360 1501-A02 mobile phone (MTK6753, 2G RAM, 720*1280), the test scenario can run steadily over 30fps.
+ The density of hair is related to the noise map. In principle, the density of hair will not affect the rendering efficiency without increasing the resolution of the noise map.
+ The length of hair is determined by the mask. The value of R channel in the mask represents the length of hair. 1 is the maximum length and 0 is the absence of hair.
+ If you want to render longer hair, you can do it by adding Pass or by adding offset for each pass. Increasing Pass will increase rendering time, and increasing the offset of each Pass will affect the accuracy of hair rendering in the long direction.