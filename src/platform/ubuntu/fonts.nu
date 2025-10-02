#!/usr/bin/env nu

http get https://github.com/subframe7536/maple-font/releases/download/v7.7/MapleMonoNormal-TTF.zip | save -p $"($env.box.config.DOWNLOADS)/MapleMonoNormal-TTF.zip"
http get https://github.com/subframe7536/maple-font/releases/download/v7.7/MapleMonoNormalNL-TTF.zip | save -p $"($env.box.config.DOWNLOADS)/MapleMonoNormalNL-TTF.zip"
