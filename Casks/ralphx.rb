cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.1"
  sha256 arm:   "86711044ed92be6e7db2e7d4fbb53e6c3ae653e8729f4931874f3d81ffa670bd",
         intel: "0583246dfee48c391566ccc693524c3a0b813cf6b471539395477fc7f5df3a3e"

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
