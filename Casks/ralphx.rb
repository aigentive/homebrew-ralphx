cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.42.0"
  sha256 arm:   "b3b8f1df99ec559a88c939476778953f2e04f074ae03e306b339344102a91798",
         intel: "0a0c3327837e4a2176df49ab0ac497ad95e5a64170df9928f78269e2f2176def"

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
