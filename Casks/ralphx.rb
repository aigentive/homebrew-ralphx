cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.10.0"
  sha256 arm:   "1fed0dce055b3016974a9db05d26515a536b36711067462c722082c340fa7b7c",
         intel: "ef7e2cc1bb0c4220e0492f45406712d6d6d119366bf87b628cb396826bd68a02"

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
