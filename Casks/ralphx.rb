cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.39.0"
  sha256 arm:   "29e980a3446a36a6d079d5d2ba48f472ae6bb1690a6361f9dc1f6d8c0bebda02",
         intel: "17a4775a966cd4b421236eb9e4c210819a1bdd7534a7bb5d2607cc3729f4f316"

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
