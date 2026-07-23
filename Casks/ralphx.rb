cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.76.0"
  sha256 arm:   "46c1550f4fd5a333549999c2e8e90163cb506572641d78548dd9b8bf1b6330f1",
         intel: "154f2ec0c235d7b5c15cf41130422e2080dde081cebe223b4b962bab6a35084e"

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
