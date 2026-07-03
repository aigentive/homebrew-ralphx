cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.55.0"
  sha256 arm:   "ed968626c19562589d807393cf2dbafa60a13ea828f7d3f4f6a27700326be8c6",
         intel: "aca7f7d8ca9b1a44695b392a8c9144dd32e778a3a73ae53aac241d61429ea50e"

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
