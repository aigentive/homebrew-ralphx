cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.53.1"
  sha256 arm:   "e37edc7bfdb30ca0ccc896b85a60672885a9222402ce9fb61a7a4a0683f7b781",
         intel: "6807dfaac54217fb011e5c63209dfe1898e30978f12a5f3701887bf6876ac494"

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
