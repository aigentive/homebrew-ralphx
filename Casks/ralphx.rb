cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.63.0"
  sha256 arm:   "1c28eef2ea0c8fda0b3ddeaf1cbd99bda2460d0b25bc7fdc7d8873b800a355c0",
         intel: "5706fd80659d1cd801546b245451163562e39c3703155ffa5804ae697977206a"

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
