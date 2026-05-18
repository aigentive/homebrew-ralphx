cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.19.1"
  sha256 arm:   "bd8df30d2568df7d62cdeb948141512a7c3683ca119427567b0ef83fea0f85e8",
         intel: "9ac8388372f7c9f2bb149052eb57935464b96422a26b0346a004ed50df801ef2"

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
