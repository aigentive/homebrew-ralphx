cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.37.0"
  sha256 arm:   "84a5d0ee5673d35abee547aeaa72a5879d4b3ffabf32f573b8f13a8c41031a78",
         intel: "e5f21fcb7d2a011dfa75c3c617382e4c4683eb8c13cb9fd1fc34049f1bb07f7a"

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
