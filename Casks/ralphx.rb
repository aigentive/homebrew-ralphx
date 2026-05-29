cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.34.0"
  sha256 arm:   "b1c14aa5dfc9697e9ade9a6423078423ee89babae4739e579cb02d3bfbbdd2f7",
         intel: "a17ceef4927bdf0918737d73ac85513c56e305687b2bcd328df8c6768c4f228f"

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
