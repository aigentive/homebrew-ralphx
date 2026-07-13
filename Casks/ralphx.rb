cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.66.0"
  sha256 arm:   "a93b08382ba91aa594de8758a653d6836ac2338dc50ddc4b27023f7bc93adbca",
         intel: "d191a28ed8f8b4663432b76477181c34ff58a68d094d29cfb966a76e9b96d25a"

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
