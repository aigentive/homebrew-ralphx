cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.2"
  sha256 arm:   "4764adf716cf3cd50c4fd5a478d293b39f2c0fe3034db342194a10b01ba0df56",
         intel: "e2f701da79ccc9eeb71687f734d42c038f207bc4bb2e39e36e3385858bc737d6"

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
