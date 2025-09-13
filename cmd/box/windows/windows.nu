export def getPackages [] {
  let install = {
    python: { ||
        print "instalando python..."
        sleep 1sec
        print "done"
    }
    git: { ||
        print "instalando git..."
    },
    choco: { ||
      powershell -c "irm https://community.chocolatey.org/install.ps1|iex"
    },
    node: { ||
      choco install nodejs-lts --version=$"($config.NODE_VERSION)"
      node -v
      npm -v
    }
  }

  return {
    install: $install
  }

}
