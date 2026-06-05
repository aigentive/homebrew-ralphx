cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.34.1"
  sha256 arm:   "65dd6e9a554ebef2992be534b5c63791b05b595f0c0df2c7b58d03884afa4c55",
         intel: "bae365e512ac7b658478e576e94418d6bbbbcdd2e3301bcc3ec2c7fb0bc5a6cc"

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
