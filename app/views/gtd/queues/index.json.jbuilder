json.array!(@gtd_queues) do |gtd_queue|
  json.extract! gtd_queue, :id
  json.url gtd_queue_url(gtd_queue, format: :json)
end
