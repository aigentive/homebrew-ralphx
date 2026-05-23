cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.27.0"
  sha256 arm:   "f739dc0393d685ba3b1a846ecb9bf3a3d1e5a2e1a0f4b42ddee1522e6368edd1",
         intel: "9e66ca9d969acf02808b6a565afd9e6b411120c2dffd05e07ef0bc62a1f5cb18"

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
