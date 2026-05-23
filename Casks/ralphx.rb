cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.28.0"
  sha256 arm:   "9faf1bbcc1843603b941aaa066bd446d2eec8540371c062b956058e555b728a1",
         intel: "7880176f5752d36a3b208c8f54605221acf83da2950c601306bca8d42b42fef4"

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
