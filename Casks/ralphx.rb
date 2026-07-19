cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.72.0"
  sha256 arm:   "6b4316d57d4ba1ea4f50e24d1657fc3f177504c48dd7ce8ef5db20c46e0c9420",
         intel: "40d1d6c199a0d438d5a4f02a88995c7cce116123a304515b85c56e9415fecc14"

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
