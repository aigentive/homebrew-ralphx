cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.49.0"
  sha256 arm:   "4ae045659f7cbcf7293ba3eb0389212fef94fd89c67d4a6b0b00fe0010ebc045",
         intel: "c723cabc5bf2860cc9e2cac41d74a995a8287088a3729aaac7638598788e265b"

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
