cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.4"
  sha256 arm:   "b0cfb0e81afc18a5b672847c9f1f1c1624d9163e412ce670703a2ae635a1dd2b",
         intel: "293c3fcd423428dadb482bbec1eac835d2b81d7f484806027dd4f160efec2ea5"

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
