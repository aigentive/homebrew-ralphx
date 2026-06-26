cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.47.0"
  sha256 arm:   "e111ecd56abc6d4f9be3594168b6d79a36f121f15f805d56bc126481368240d4",
         intel: "f0816455944c91e3604e5ce3b35e8f51d66bf14a224218d843df89557939e028"

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
