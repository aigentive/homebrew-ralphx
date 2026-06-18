cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.38.0"
  sha256 arm:   "39522011c2934ea794e4d32e3e0a46ea1d2040fa5fe5e4a3f2ae491228ae7379",
         intel: "f8360126ddf26e452cac73221b377c35f7bb32babf6a3d5a5fcb82f742937275"

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
