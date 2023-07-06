# frozen_string_literal: true

module GoodJob
  class ProcessesController < GoodJob::ApplicationController
    def index
      @processes = GoodJob::CapsuleRecord.active.order(created_at: :desc)
    end
  end
end
