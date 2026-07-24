cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.77.1"
  sha256 arm:   "4f45100440579fa7b44413b75fa2ab6ffdc4e1e5f01ea228d7a5a285654ff4e8",
         intel: "eaf6bc049399e790cbeaff6d2e13df9e799431686bb0c7b23eab3142b2bf4844"

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
