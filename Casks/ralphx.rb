cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.71.0"
  sha256 arm:   "ffce59cbac3514076d033db667e73de98f43e38862c934ecc34526f0069e8eeb",
         intel: "97f702235c3e5bc7dab02395963fcbf703407d0cb2bfd47131dc1202c9127911"

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
