defmodule Solution do
  @spec find_median_sorted_arrays(nums1 :: [integer], nums2 :: [integer]) :: float
  def find_median_sorted_arrays(nums1, nums2) do
    nums = nums1 ++ nums2
    nums_em_ordem = Enum.sort(nums)

    if rem(length(nums_em_ordem), 2) == 0 do
        indice_do_meio = div(length(nums_em_ordem),2)
        (Enum.at(nums_em_ordem, indice_do_meio - 1) + Enum.at(nums_em_ordem, indice_do_meio)) / 2.0
    else
        indice_do_meio = div(length(nums_em_ordem), 2)
        Enum.at(nums_em_ordem, indice_do_meio)
    end
  end
end
Solution.find_median_sorted_arrays([1, 3], [2]) # 2.0
Solution.find_median_sorted_arrays([1, 2], [3, 4]) # 2.5
