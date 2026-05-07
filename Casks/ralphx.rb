cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.1"
  sha256 arm:   "eebc0d4488f534ec6813bd43d596017234a18ee0d8772e0dadd639a5eaf33f34",
         intel: "e7db102c207425b20f3d402159f9343cf8dbe16c5cbf7be89cb771c2454a9b6e"

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
