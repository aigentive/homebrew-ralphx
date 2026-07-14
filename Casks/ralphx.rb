cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.67.0"
  sha256 arm:   "1b617fc9e9b6b567f1c8904fd9b4c730a651c6fc8f78b30e20fc1ed71b951702",
         intel: "11f01ee119efb39538c9944d5a396ac392e11874aacc6de0aef0b7179c62f23b"

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
