cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.58.0"
  sha256 arm:   "37c420bf8c2a4bf24fd126751c8d79e67cefad559ccb2ec5ac4c1a3d9390e4ce",
         intel: "84c3307bc20d9d05d3c9f381d18ad918605d54095105c1aecd7fac1d964d9385"

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
