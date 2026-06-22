cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.43.1"
  sha256 arm:   "27296aea84007ec094a944552aeda84193c42e22b8d9ff7512cbe44d3188491b",
         intel: "f0be47301a50d17902a7ec1a46441e5694f72a22762162b21349d21120c9def5"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
