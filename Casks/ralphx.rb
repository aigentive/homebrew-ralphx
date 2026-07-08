cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.60.0"
  sha256 arm:   "c920ddd53587c26fd6ebb9a00025a600e06ec6b00d9c523d78ed14ea048630da",
         intel: "c8a699e7bfc41b13f576e183f1eef3801bc550ceb6863611dbbae6c930044a03"

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
