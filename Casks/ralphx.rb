cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.41.0"
  sha256 arm:   "6ebf0c9c37cb72aee4c2c965ffafb9896d0b78856aaa1968db8d88d13ee5b97b",
         intel: "991a7a4f0b6f29e24daea7dbf5fc01ac032b3ef790a9f4723053aee381c231e3"

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
