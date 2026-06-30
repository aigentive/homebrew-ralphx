cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.52.0"
  sha256 arm:   "e71946e60ad15da301500a640a325200eb2ac64c22e4ee7c640150d342d17263",
         intel: "a295c0a28181bd28c1a27cc60b92e77a316e65b3966729c8ca468729d132eae0"

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
