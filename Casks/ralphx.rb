cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.14.0"
  sha256 arm:   "831d95d33c7944a542ce23b5a0b0d34d048ebcdb6b5595c32bce87467d784b81",
         intel: "ea219b902ca2dfb499af7dc1ddd2fc0ce1190552285ba31fdf1c4ff7ecc6c13a"

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
