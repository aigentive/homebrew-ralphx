cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.64.0"
  sha256 arm:   "0029e9aea2b7d33c33d04b35b3113731c3dd975a524729a389f98cd53a8f8170",
         intel: "51cf5f174c38719c16f69e7a1548dfd5e87a2f6e9df21f65b2553ad3be5621a4"

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
