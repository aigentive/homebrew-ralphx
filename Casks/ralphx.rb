cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.61.0"
  sha256 arm:   "e281432ceca0fbe0417517e216bbd54341e6d23f965401582fe18e42b83cfa2f",
         intel: "bb4555d2302003e398c81b75b41ada466bfe1a286cf7acd67a01e6fdc2877c92"

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
