export def getPackages [] {
  let pkgs = {
    essential: {|this|
      do $this.git
      do $this.fonts

    },
    fonts: {||
      # http get https://github.com/subframe7536/maple-font/releases/download/v7.7/MapleMonoNormal-TTF.zip | save $"($config.DOWNLOADS)/MapleMonoNormal-TTF.zip"
    },
    python: { ||
        print "instalando python..."
        sleep 1sec
        print "done"
    }
    git: { ||
      winget install --id Git.Git -e --source winget
    },
    choco: { ||
      powershell -c "irm https://community.chocolatey.org/install.ps1|iex"
    },
    node: { ||
      # choco install nodejs-lts --version=$"($config.NODE_VERSION)" --force
      node -v
      npm -v
    }
  }

  return $pkgs
}
