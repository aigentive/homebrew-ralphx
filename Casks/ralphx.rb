cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.24.0"
  sha256 arm:   "33f3fb23f345a6e0d4a9fa4591a676801435cd72c514d44bf4ff5d79fd92ad38",
         intel: "4cc3a9e5ed7bffdca923eb4327f8745cbbe897a5a4ab2e6eaefc3a52964f2cba"

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
