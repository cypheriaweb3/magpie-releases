cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.162"
  sha256 arm:   "5927501bc47ddc101c3b2687f359f2760e92c3d1ecbd5d5e033ea6f0123eff8e",
         intel: "3c26ff59e24f6c3b1ea068decb44dafde5ac611b9afef25351738f480875b722"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
